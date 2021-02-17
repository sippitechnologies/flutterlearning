class Todo {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Todo(this._title, this._date, this._priority, [this._description]);
  Todo.withId(this._id, this._title, this._date, this._priority,
      [this._description]);
  Todo.fromObject(dynamic o) {
    this._id = o['id'];
    this._date = o['date'];
    this._priority = o['proirity'];
    this._title = o['title'];
    this._description = o['description'];
  }

  Map<String, Object> toMap() {
    Map<String, Object> map = Map<String, Object>();
    map['title'] = _title;
    map['description'] = _description;
    map['date'] = _date;
    map['id'] = _id;
    map['priority'] = _priority;
    return map;
  }

  String get title => _title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;
  int get id => _id;

  set description(String description) {
    this._description = description;
  }

  set title(String title) {
    this._title = title;
  }

  set priority(int priority) {
    this._priority = priority;
  }

  set date(String date) {
    this._date = date;
  }
}
