
class Controller {
  //Property

  //Constructor
  Controller();

  //Methods
  String? kondisiSPO2(int SPO2){

    if(SPO2 < 90){
      return "Rendah";
    }
    return null;
  }

  String? kondisiDetakJantung(int detakJantung) {
    if (detakJantung < 90) {
      return "Rendah";
    }
    return null;
  }

  String? kondisiSystole(int systole){

    if(systole < 80){
      return "Tekanan Rendah";
    }
    return null;
  }

  String? kondisiSuhuTubuh(int suhu) {
    if (suhu < 31) {
      return "Suhu Rendah";
    } else if (suhu > 37){
      return "Suhu Tinggi";
    }
    return null;
  }
}