<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:gravity="center"
    android:orientation="vertical"
    android:padding="4dp">


    <RelativeLayout
        android:layout_width="36dp"
        android:layout_height="36dp">

        <ImageView
            android:id="@+id/tab_icon"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_centerInParent="true" />


        <RelativeLayout
            android:id="@+id/rl_badge"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:layout_centerInParent="true"
            android:padding="3dp"
            android:visibility="gone">


            <TextView
                android:id="@+id/txt_badge"
                android:layout_width="16dp"
                android:layout_height="16dp"
                android:layout_alignParentRight="true"
                android:background="@drawable/view_badge_un_selected"
                android:gravity="center"
                android:textColor="@android:color/white"
                android:textSize="8sp"
                android:textStyle="bold" />
        </RelativeLayout>


    </RelativeLayout>

</LinearLayout>
