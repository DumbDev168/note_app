enum FilterDataType {
  delete,
  update,
  create;

  bool get isDelete => this == FilterDataType.delete;
  bool get isUpdate => this == FilterDataType.update;
  bool get isCreate => this == FilterDataType.create;
}
