package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ${tabName3} extends Fragment{

    public ${tabName3}() {
        // Required empty public constructor
    }

    public static ${tabName3} newInstance() {

       Bundle args = new Bundle();
       ${tabName3} fragment = new ${tabName3}();
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
        return inflater.inflate(R.layout.${tabLayoutName3}, container, false);
    }

}
