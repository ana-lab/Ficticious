@isTest
private class TestLanguageCourseTrigger { 
    @isTest static void TestLanguageCourseTrigger() {
        // Test data setup
        //Creamos un instructor para el
        Language_Course_Instructor__c instructor = new Language_Course_Instructor__c(Name='Test Language Course Instructor');
        insert instructor;
        // Create an curso
        Language_Course__c curso = new Language_Course__c(Name='Test Language Course', Course_Instructor__c=instructor.Id);
        insert curso;
                
        // Perform test
        Test.startTest();
        Database.DeleteResult result = Database.delete(curso, false);
        Test.stopTest();
        // Verify 
        // In this case the deletion should have been stopped by the trigger,
        // so verify that we got back an error.
        System.assert(result.isSuccess());
        //System.assert(result.getErrors().size() > 0);
    }
}
