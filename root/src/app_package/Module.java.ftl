package ${packageName}.${folderName}.dagger.modules;

import ${packageName}.${folderName}.${className}Activity;
import ${packageName}.${folderName}.core.${className}Contract;
import ${packageName}.${folderName}.core.${className}Presenter;
import ${packageName}.${folderName}.dagger.scopes.${className}ActivityScope;

import dagger.Module;
import dagger.Provides;

@Module
public class ${className}Module {

    @${className}ActivityScope
    @Provides
    public ${className}Contract.Presenter provide${className}Presenter(${className}Contract.View view) {
        return new ${className}Presenter(view);
    }

    @${className}ActivityScope
    @Provides
    public ${className}Contract.View provides${className}View(${className}Activity activity) {
        return activity;
    }
}
