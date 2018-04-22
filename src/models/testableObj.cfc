component {
    
    property numeric value;

    public void function init() {
        variables.value = 0;
    }
    
    public any function add(required numeric v ) {
        variables.value += v;
        return variables.value;
    }

    public numeric function subtract(required numeric v) {
        variables.value -= v;
        return variables.value;
    }
}