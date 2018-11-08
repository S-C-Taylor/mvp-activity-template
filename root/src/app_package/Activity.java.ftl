package ${packageName}.${folderName};

import android.app.Activity;
import android.os.Bundle;

import ${packageName}.${folderName}.core.${className}Contract;
import ${packageName}.${folderName}.dagger.components.${className}ActivityComponent;
import ${packageName}.${folderName}.dagger.modules.${className}ActivityModule;

import javax.inject.Inject;

public class ${className}Activity extends Activity implements ${className}Contract.View {
	
	@Inject
    ${className}Contract.Presenter presenter;
    
    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
		
		${className}ActivityComponent component = Dagger${className}ActivityComponent.builder()
                .${camelCaseToUnderscore(className)}ActivityModule(new ${className}ActivityModule(this))
                .${"${applicationName}"?uncap_first}Component(${applicationName}.get(this).getComponent())
                .build();

        component.inject${className}Activity(this);
    }
 
    @Override
    protected void onDestroy() {
        super.onDestroy();
    }
}