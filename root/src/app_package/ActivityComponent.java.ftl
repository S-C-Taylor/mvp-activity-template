package ${packageName}.dagger.components;

import ${packageName}.${className}Activity;
import ${packageName}.dagger.modules.${className}ActivityModule;
import ${packageName}.dagger.modules.${className}Module;
import ${packageName}.dagger.scopes.${className}ActivityScope;

import dagger.Component;

@${className}ActivityScope
@Component (modules = {${className}ActivityModule.class, ${className}Module.class}, dependencies = {${applicationName}Component.class})
public interface ${className}ActivityComponent {
    void inject${className}Activity(${className}Activity activity);
}
