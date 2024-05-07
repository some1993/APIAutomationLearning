package Runner;

import com.intuit.karate.junit5.Karate;

public class JavaScriptRunner {
    @Karate.Test
    Karate scriptRunner()
    {
        return Karate.run("..\\PostMethodFeatureFiles\\JavaScriptFun.feature").relativeTo(getClass());
    }
}
