
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;

import java.util.ArrayList;
import java.util.List;
import android.view.MenuItem;
import android.view.View;
import android.view.LayoutInflater;
import android.widget.TextView;
import android.view.ViewGroup;
import android.widget.ImageView;



public class ${activityClass} extends AppCompatActivity {

  <#if isToolbar>
    private Toolbar toolbar;
  </#if>

  private TabLayout tablayout;

    private String tabNames[] = {"${tab1}","${tab2}","${tab3}"};

    <#if tabstyle == 'icons' || tabstyle == 'iconswithtext'>

    private int[] tabIcons = {
                R.drawable.YOUR_DRAWABLE,
                R.drawable.YOUR_DRAWABLE,
                R.drawable.YOUR_DRAWABLE };

    </#if>


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutActivityName});

        initView();

        <#if isToolbar>
        initToolbar();
        </#if>

        setupTabLayout();

        initTab();

    }

    private void setupTabLayout() {

        tablayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() {
            @Override
            public void onTabSelected(TabLayout.Tab tab) {


                switchTab(tab.getPosition());
            }

            @Override
            public void onTabUnselected(TabLayout.Tab tab) {

            }

            @Override
            public void onTabReselected(TabLayout.Tab tab) {

            }
        });


    }

    <#if isToolbar>
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {

         switch (item.getItemId()){
             case android.R.id.home:
                 finish();
                 return true;
         }

         return super.onOptionsItemSelected(item);
    }
    </#if>


    private void initView() {
      <#if isToolbar>
          toolbar = (Toolbar) findViewById(R.id.toolbar);
      </#if>
          tablayout = (TabLayout) findViewById(R.id.tablayout);
      }

    <#if isToolbar>

    private void initToolbar() {
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }
    </#if>

    private void initTab() {
           if (tablayout != null) {
               for (int i = 0; i < tabNames.length; i++) {
                   tablayout.addTab(tablayout.newTab());
                   TabLayout.Tab tab = tablayout.getTabAt(i);
                   if (tab != null)
                       tab.setCustomView(getTabView(i));
               }
           }

       }


       private View getTabView(int position) {
           View view = LayoutInflater.from(MainActivity.this).inflate(R.layout.view_tabs, null);

           <#if tabstyle == 'icons' || tabstyle == 'iconswithtext'>
           ImageView icon = (ImageView) view.findViewById(R.id.tab_icon);
           icon.setImageResource(tabIcons[position]);
           </#if>

           <#if tabstyle == 'simple'|| tabstyle == 'iconswithtext'>
           TextView text = (TextView) view.findViewById(R.id.tab_text);
           text.setText(tabNames[position]);
           </#if>

           view.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
           return view;
       }


       private void switchTab(int position){

           FragmentManager fragmentManager = getSupportFragmentManager();
           FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();

           switch (position){

               case 0:

                   fragmentTransaction.replace(R.id.content_frame, ${tabName1}.newInstance());
                   break;

               case 1:

                   fragmentTransaction.replace(R.id.content_frame, ${tabName2}.newInstance());
                   break;

               case 2:
                   fragmentTransaction.replace(R.id.content_frame, ${tabName3}.newInstance());
                   break;
           }
           fragmentTransaction.commit();

       }


}
