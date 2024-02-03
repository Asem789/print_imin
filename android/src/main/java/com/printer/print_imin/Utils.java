package com.printer.print_imin;

import android.content.Context;


public class Utils {
    private Utils() {
    }

    public static Utils getInstance() {
        return Holder.instance;
    }

    private static class Holder {
        private static final Utils instance = new Utils();
    }

    private Context mContext;
    public Context getContext() {
        return mContext;
    }
    public void setContext(Context context) {
        this.mContext = context;
    }
}
