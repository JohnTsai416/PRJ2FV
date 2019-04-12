/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class GeocodeComponentUtils {
    global GeocodeComponentUtils() {

    }
    global static Map<String,Object> checkFieldsUpdateRights(Map<String,Schema.SObjectField> m, List<String> fieldsToCheck) {
        return null;
    }
    global static String getCurrencyIsoCode(SObject someObject) {
        return null;
    }
    global static String getCurrencySymbol(SObject someObject) {
        return null;
    }
    global static String getCurrencySymbolFromIso(String Iso) {
        return null;
    }
    global static Boolean getFieldsUpdateRights(Map<String,Schema.SObjectField> m, List<String> fieldsToCheck) {
        return null;
    }
    global static String getStringValueFromType(Schema.DisplayType aType, SObject someObject, String field) {
        return null;
    }
global class AddressFieldWrapper {
}
global class ComponentConfig {
}
global class Field {
    global String name {
        get;
        set;
    }
    global String type {
        get;
        set;
    }
    global Field() {

    }
    global Field(String name, String type) {

    }
}
global class GeoInfoRequest {
    global Decimal lat {
        get;
        set;
    }
    global ggo.GeocodeComponentUtils.Layer layer {
        get;
        set;
    }
    global Decimal lng {
        get;
        set;
    }
    global GeoInfoRequest() {

    }
    global GeoInfoRequest(Decimal lat, Decimal lng, ggo.GeocodeComponentUtils.Layer lyr) {

    }
}
global class GeoInfoResponse {
    global Map<String,Object> attributes {
        get;
        set;
    }
    global List<ggo.GeocodeComponentUtils.Field> fields {
        get;
        set;
    }
    global GeoInfoResponse() {

    }
    global GeoInfoResponse(List<ggo.GeocodeComponentUtils.Field> fields, Map<String,Object> attr) {

    }
}
global class Layer {
    global Integer layerId {
        get;
        set;
    }
    global String name {
        get;
        set;
    }
    global Layer() {

    }
    global Layer(Integer anId, String aName) {

    }
}
global class LocationFieldWrapper {
}
global class RestErrorInfo {
    global Integer errorCode {
        get;
        set;
    }
    global String message {
        get;
        set;
    }
    global Integer status {
        get;
        set;
    }
    global RestErrorInfo() {

    }
    global RestErrorInfo(String message, Integer status, Integer errorCode) {

    }
}
}
