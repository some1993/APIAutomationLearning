package Runner;

import com.intuit.karate.junit5.Karate;

public class TestDataDrivenRunner {
    @Karate.Test
    Karate dataDriven(){
        return Karate.run("../DataDriven/postDataDriven.feature").relativeTo(getClass());
    }
}
