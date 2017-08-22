package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;

import java.util.ArrayList;
import java.util.List;
import android.view.MenuItem;



public class ${activityClass} extends AppCompatActivity {

  <#if isToolbar>
    private Toolbar toolbar;
  </#if>

  private TabLayout tablayout;
  private ViewPager viewpager;

    private String tabNames[] = {"${tab1}","${tab2}","${tab3}"};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutActivityName});

        initView();

        <#if isToolbar>
        initToolbar();
        </#if>

        setupViewPager(viewpager);
        tablayout.setupWithViewPager(viewpager);

        <#if tabstyle == 'icons'>
        setupTabIcons();
        </#if>


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

    private void setupViewPager(ViewPager viewPager) {

        viewPager.setAdapter(new FragmentPagerAdapter(getSupportFragmentManager()) {
            @Override
            public Fragment getItem(int position) {

                switch (position) {

                    case 0:
                        return ${tabName1}.newInstance();

                    case 1:
                        return ${tabName2}.newInstance();

                    case 2:
                        return ${tabName3}.newInstance();

                }
                return null;
            }

            @Override
            public CharSequence getPageTitle(int position) {
                return tabNames[position];
            }

            @Override
            public int getCount() {
                return tabNames.length;
            }
        });
    }

    private void initView() {
      <#if isToolbar>
          toolbar = (Toolbar) findViewById(R.id.toolbar);
      </#if>
          tablayout = (TabLayout) findViewById(R.id.tablayout);
          viewpager = (ViewPager) findViewById(R.id.viewpager);
      }

    <#if isToolbar>

    private void initToolbar() {
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }
    </#if>

<#if tabstyle == 'icons'>

    private void setupTabIcons() {
           int[] tabIcons = {
                   R.drawable.{YOUR_DRAWABLE_1},
                   R.drawable.{YOUR_DRAWABLE_2},
                   R.drawable.{YOUR_DRAWABLE_3}
           };

           tablayout.getTabAt(0).setIcon(tabIcons[0]);
           tablayout.getTabAt(1).setIcon(tabIcons[1]);
           tablayout.getTabAt(2).setIcon(tabIcons[2]);
       }

</#if>



}
