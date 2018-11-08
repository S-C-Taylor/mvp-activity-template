package ${packageName}.${folderName}.dagger.components;

import ${packageName}.${folderName}.${className}Activity;
import ${packageName}.${folderName}.dagger.modules.${className}ActivityModule;
import ${packageName}.${folderName}.dagger.modules.${className}Module;
import ${packageName}.${folderName}.dagger.scopes.${className}ActivityScope;

import dagger.Component;

@${className}ActivityScope
@Component (modules = {${className}ActivityModule.class, ${className}Module.class}, dependencies = {${applicationName}Component.class})
public interface ${className}ActivityComponent {
    void inject${className}Activity(${className}Activity activity);
}
