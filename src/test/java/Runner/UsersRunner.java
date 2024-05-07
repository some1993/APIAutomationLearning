package Runner;

import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {

       // return Karate.run("users").relativeTo(getClass());
       return Karate.run("C:\\Users\\Somarti\\IdeaProjects\\karate-template\\src\\test\\java\\GetMethodFeatureFiles\\users.feature");
    }
    @Karate.Test
    Karate runTest(){
        return Karate.run("C:\\Users\\Somarti\\IdeaProjects\\karate-template\\src\\test\\java\\GetMethodFeatureFiles\\getRequest.feature");
    }

    @Karate.Test
    Karate printResponse()
    {
        return Karate.run("C:\\Users\\Somarti\\IdeaProjects\\karate-template\\src\\test\\java\\GetMethodFeatureFiles\\responseMatcher.feature");
    }
    @Karate.Test
    Karate validateJson(){
        return Karate.run("C:\\Users\\Somarti\\IdeaProjects\\karate-template\\src\\test\\java\\GetMethodFeatureFiles\\validateJSONArray.feature");
    }
    @Karate.Test
    Karate validateXML()
    {
        return Karate.run("C:\\Users\\Somarti\\IdeaProjects\\karate-template\\src\\test\\java\\GetMethodFeatureFiles\\validateXML.feature");
    }
    @Karate.Test
    Karate jsonFuzzyMatcher()
    {
        return Karate.run("C:\\Users\\Somarti\\IdeaProjects\\karate-template\\src\\test\\java\\GetMethodFeatureFiles\\JsonFuzzyMatcher.feature");
    }
}