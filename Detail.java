
package Jstlservlet;

/**
 *
 * @author mkjam
 */
public class Detail {
    int roll;
    String name;
    
    public Detail(int roll,String name ){
        super();
        this.roll=roll;
        this.name=name;
    }

    public int getRoll() {
        return roll;
    }

    public void setRoll(int roll) {
        this.roll = roll;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Detail{" + "roll=" + roll + ", name=" + name + '}';
    }
    
}
