package ${packageName}.dagger.modules;

import ${packageName}.${className}Activity;
import ${packageName}.core.${className}Contract;
import ${packageName}.core.${className}Presenter;
import ${packageName}.dagger.scopes.${className}ActivityScope;

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
