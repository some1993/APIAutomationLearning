package Runner;

import com.intuit.karate.junit5.Karate;

public class TestVariableRunner {

    @Karate.Test
    Karate runVariable()
    {
        return Karate.run("C:\\Users\\Somarti\\IdeaProjects\\karate-template\\src\\test\\java\\GetMethodFeatureFiles\\Variable.feature");
    }
    @Karate.Test
    Karate addPrintVariables()
    {
        return Karate.run("C:\\Users\\Somarti\\IdeaProjects\\karate-template\\src\\test\\java\\GetMethodFeatureFiles\\addVariables.feature");
    }
    @Karate.Test
    Karate verifyJSONResponse()
    {
        return Karate.run("C:\\Users\\Somarti\\IdeaProjects\\karate-template\\src\\test\\java\\GetMethodFeatureFiles\\ValidateJSONResponseUsingFile.feature");
    }
    @Karate.Test
    Karate verifyXMLResponse()
    {
        return Karate.run("C:\\Users\\Somarti\\IdeaProjects\\karate-template\\src\\test\\java\\GetMethodFeatureFiles\\ValidateXMLResponse.feature");
    }

}
