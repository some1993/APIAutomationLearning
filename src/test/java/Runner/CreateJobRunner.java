package Runner;

import com.intuit.karate.junit5.Karate;

public class CreateJobRunner {
    @Karate.Test
    Karate createEntry(){
        return Karate.run("..\\PostMethodFeatureFiles\\CreateJobEntry.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate checkSchema()
    {
        return Karate.run("..\\PostMethodFeatureFiles\\schemaValidation.feature").relativeTo(getClass());
    }
    @Karate.Test
    Karate embeddedExp()
    {
        return Karate.run("..\\PostMethodFeatureFiles\\EmbeddedExpression.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate fileUpload(){
        return Karate.run("..\\PostMethodFeatureFiles\\FileUpload.feature").relativeTo(getClass());
    }

}
