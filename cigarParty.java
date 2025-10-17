public class cigarParty {
  public static boolean cigarParty(int cigars, boolean isWeekend) {
    if (isWeekend && cigars >= 40) {
      // On weekends, no upper limit
      return true;
    } else if (cigars >= 40 && cigars <= 60) {
      // On weekdays, must be between 40 and 60
      return true;
    } else {
      return false;
    }
  }

  public static void main(String[] args) {
    // no-op main to satisfy runtime / compiler requirements
  }
}
