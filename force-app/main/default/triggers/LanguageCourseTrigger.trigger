trigger LanguageCourseTrigger on Language_Course__c (after insert, after update, after delete) {
// <write your own notification code>
    system.debug('Se ha creado, modificado o borrado un Curso de Idiomas');
}