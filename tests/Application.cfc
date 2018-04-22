component {
    this.name = '#createUUID()#';
    variables.here = getDirectoryFromPath(getCurrentTemplatePath());
    this.mappings['/mxunit'] = variables.here & "../testbox/system/compat";
    this.mappings['/testbox'] = variables.here & "../testbox";
    this.mappings['/app'] = variables.here & "../src";
    //this.mappings['/framework'] = variables.here & "../framework";
    this.mappings['/tests'] = variables.here;
}