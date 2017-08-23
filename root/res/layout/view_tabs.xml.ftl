<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:gravity="center"
    android:orientation="vertical"
    android:padding="5dp">

    <#if tabstyle == 'icons' || tabstyle == 'iconswithtext'>

    <ImageView
        android:id="@+id/tab_icon"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content" />

    </#if>

    <#if tabstyle == 'simple'|| tabstyle == 'iconswithtext'>


    <TextView
          android:id="@+id/tab_text"
          android:layout_width="wrap_content"
          android:layout_height="wrap_content"
          android:textColor="@android:color/white"
          android:textSize="16sp"
          android:textAllCaps="true" />

    </#if>
</LinearLayout>
