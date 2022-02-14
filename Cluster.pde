public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        double stem = 2*Math.PI / 7.0;
        Tendril arm = new Tendril(len, 0, x, y);
        arm.show();
        Tendril arm2 = new Tendril(len, stem, x, y);
        arm2.show();
        Tendril arm3 = new Tendril(len, 2*stem, x, y);
        arm3.show();
        Tendril arm4 = new Tendril(len, 3*stem, x, y);
        arm4.show();
        Tendril arm5 = new Tendril(len, 4*stem, x, y);
        arm5.show();
        Tendril arm6 = new Tendril(len, 5*stem, x, y);
        arm6.show();
        Tendril arm7 = new Tendril(len, 6*stem, x, y);
        arm7.show();
    }
}
