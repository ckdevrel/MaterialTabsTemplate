package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ${tabName2} extends Fragment{

    public ${tabName2}() {
        // Required empty public constructor
    }

    public static ${tabName2} newInstance() {

           Bundle args = new Bundle();
           ${tabName2} fragment = new ${tabName2}();
           fragment.setArguments(args);
           return fragment;
       }


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.${tabLayoutName2}, container, false);
    }

}
