class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data);
}

class Queue<T> {
  Node<T>? _depan;
  Node<T>? _belakang;
  int _ukuran = 0;

  bool get kosong => _depan == null;

  int get ukuran => _ukuran;

  // Tambah elemen ke belakang antrian
  void enqueue(T nilai) {
    final nodeBaru = Node<T>(nilai);

    if (kosong) {
      _depan = nodeBaru;
      _belakang = nodeBaru;
    } else {
      _belakang!.next = nodeBaru;
      _belakang = nodeBaru;
    }

    _ukuran++;
    print('$nilai berhasil ditambahkan ke antrian');
  }

  T? pop() {
    if (kosong) {
      print('Antrian kosong, tidak ada yang dihapus');
      return null;
    }

    final nilai = _depan!.data;
    _depan = _depan!.next;

    if (_depan == null) {
      _belakang = null;
    }

    _ukuran--;
    print('$nilai dihapus dari antrian');
    return nilai;
  }

  void tampilkan() {
    final hasil = <T>[];
    var sekarang = _depan;

    while (sekarang != null) {
      hasil.add(sekarang.data);
      sekarang = sekarang.next;
    }

    print('Isi antrian: $hasil');
  }
}

void main() {
  final antrian = Queue<int>();

  antrian.enqueue(10);
  antrian.enqueue(20);
  antrian.enqueue(30);
  antrian.tampilkan();

  antrian.pop();
  antrian.tampilkan();
}
