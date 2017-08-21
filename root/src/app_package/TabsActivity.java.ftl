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

  <#if isToolbar || isSearch>
    private Toolbar toolbar;
  </#if>
    private TabLayout tabLayout;
    private ViewPager viewPager;

    private String tabNames[] = {"${tab1}","${tab2}","${tab3}"};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutActivityName});

        <#if isToolbar || isSearch>
        toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        </#if>


        viewPager = (ViewPager) findViewById(R.id.viewpager);
        setupViewPager(viewPager);

        tabLayout = (TabLayout) findViewById(R.id.tabs);
        tabLayout.setupWithViewPager(viewPager);
    }

    <#if isToolbar || isSearch>
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {

         switch (item.getItemId()){
             case android.R.id.home:
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
                        return new ${tabName1}.newInstance();

                    case 1:
                        return new ${tabName2}.newInstance();

                    case 2:
                        return new ${tabName3}.newInstance();

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


}
