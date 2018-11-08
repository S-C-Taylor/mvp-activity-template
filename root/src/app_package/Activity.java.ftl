package ${packageName};

import android.app.Activity;
import android.os.Bundle;

import ${packageName}.core.${className}Contract;
import ${packageName}.dagger.components.${className}ActivityComponent;
import ${packageName}.dagger.modules.${className}ActivityModule;

import javax.inject.Inject;

public class ${className}Activity extends Activity implements ${className}Contract.View {
	
	@Inject
    ${className}Contract.Presenter presenter;
    
    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
		
		${className}ActivityComponent component = Dagger${className}ActivityComponent.builder()
                .${camelCaseToUnderscore(className)}ActivityModule(new ${className}ActivityModule(this))
                .${camelCaseToUnderscore(applicationName)}Component(${applicationName}.get(this).getComponent())
                .build();

        component.inject${className}Activity(this);
    }
 
    @Override
    protected void onDestroy() {
        super.onDestroy();
    }
}