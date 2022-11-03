class KmToMileConverter {
  num value;
  KmToMileConverter(this.value);

  num convertKmToMile() {
    return value / 1.6;
  }
}