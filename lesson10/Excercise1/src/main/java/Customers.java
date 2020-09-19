public class Customers {
    String fistName;
    String birthOfDay;
    String address;

    public Customers(String fistName, String birthOfDay, String address) {
        this.fistName = fistName;
        this.birthOfDay = birthOfDay;
        this.address = address;
    }

    public String getFistName() {
        return fistName;
    }

    public void setFistName(String fistName) {
        this.fistName = fistName;
    }

    public String getBirthOfDay() {
        return birthOfDay;
    }

    public void setBirthOfDay(String birthOfDay) {
        this.birthOfDay = birthOfDay;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    };
}