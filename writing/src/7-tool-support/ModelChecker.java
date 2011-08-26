public interface ModelChecker {

  /* If `glts` has at least one accepting state, returns a trace 
     to it from the initial state. Returns null otherwise. */
  public GLTS.Trace emptyOrTrace(GLTS glts){
    // ...
  }

  /* Compose an array of GLTSs and returns the result */
  public GLTS compose(GLTS[] glts) {
    // ...
  }

  /* Model check `glts` against `property` using provided fluent 
     definitions. */
  public GLTS.Trace modelCheck(GuardedHMSC model, 
                               FLTL.Property property, 
                               FLTL.Fluent[] fluents) {
    GLTS[] gltss = new GLTS[1 + 1 + fluent.size];
    gltss[0] = model.toGLTS();
    gltss[1] = property.toGLTS();
    for (int i=0; i<fluents.size; i++){
      gltss[2+i] = fluent.toGLTS();
    }
    GLTS result = compose(gltss);
    return emptyOrTrace(result);
  }

}
