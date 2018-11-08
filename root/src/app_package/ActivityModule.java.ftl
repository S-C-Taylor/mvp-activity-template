package ${packageName}.dagger.modules;
 
import ${packageName}.${className}Activity;
import ${packageName}.dagger.scopes.${className}ActivityScope;

import dagger.Module;
import dagger.Provides;

@Module
public class ${className}ActivityModule {
    private final ${className}Activity activity;

    public ${className}ActivityModule(${className}Activity activity) {
        this.activity = activity;
    }

    @Provides
    @${className}ActivityScope
    public ${className}Activity get${className}Activity() {
        return this.activity;
    }
}