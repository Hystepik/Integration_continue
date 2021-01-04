public static class Controller
{
    private final float TVA = 5.5;
    private float Prix (float cout, float marge)
    {
        return cout*marge*TVA;
    }
}