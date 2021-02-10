import 'dart:async';

class CountBloc {
  int _count = 0;
  StreamController<int> _countSubject = StreamController<int>();
  Stream<int> get count => _countSubject.stream;

  change(int change) {
    _count += change;
    _countSubject.sink.add(_count);
  }

  dispose() {
    _countSubject.close();
  }
}
