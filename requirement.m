!(gateState(G1, false))*.openGate(G0)false &&
true*.openGate(G1).!gateState(G1, false))*.openGate(G0)false
!(gateState(G0, false))*.openGate(G1)false &&
true*.openGate(G0).!gateState(G0, false))*.openGate(G1)false

%-------------------------------------------------------------------
!(valveState(V1, false))*.openValve(V0)false &&
true*.openValve(V1).!(valveState(V1, false))*.openValve(V0)false
!(valveState(V1, false))*.openValve(V0)false &&
true*.openValve(V1).!(valveState(V1, false))*.openValve(V0)false

%-------------------------------------------------------------------
!(valveState(V1, false))*.openGate(G0)false &&
true*.openValve(V1).!(valveState(V1, false))*.openGate(G0)false
!(valveState(V0, false))*.openGate(G1)false &&
true*.openValve(V0).!(valveState(V0, false))*.openGate(G1)false

%-------------------------------------------------------------------
!(gateState(G1, false))*.openValve(V0)false &&
true*.openGate(G1).!(gateState(G1, false))*.openValve(V0)false
!(gateState(G0, false))*.openValve(V1)false &&
true*.openGate(G0).!(gateState(G0, false))*.openValve(V1)false

%-------------------------------------------------------------------
true*.!(gateSensor(G0, false)).closeGate(G0)false
true*.!(gateSensor(G1, false)).closeGate(G1)false

%-------------------------------------------------------------------
true*.!(compareWaterlevel0).openGate(G0)false
true*.!(compareWaterlevel1).openGate(G1)false

%-------------------------------------------------------------------
true*.passSignal(0, true).!(haltSignal(0, false))false
true*.passSignal(1, true).!(haltSignal(1, false))false
true*.passSignal(2, true).!(haltSignal(2, false))false
true*.passSignal(3, true).!(haltSignal(3, false))false

%-------------------------------------------------------------------
true*.haltSignal(0, true).!(passSignal(0, false))false
true*.haltSignal(1, true).!(passSignal(1, false))false
true*.haltSignal(2, true).!(passSignal(2, false))false
true*.haltSignal(3, true).!(passSignal(3, false))false

%-------------------------------------------------------------------
true*.!(haltSignal(0, true)).passSignal(0, false)false
true*.!(haltSignal(1, true)).passSignal(1, false)false
true*.!(haltSignal(2, true)).passSignal(2, false)false
true*.!(haltSignal(3, true)).passSignal(3, false)false

%-------------------------------------------------------------------
true*.!(passSignal(0, true)).haltSignal(0, false)false
true*.!(passSignal(1, true)).haltSignal(1, false)false
true*.!(passSignal(2, true)).haltSignal(2, false)false
true*.!(passSignal(3, true)).haltSignal(3, false)false

%-------------------------------------------------------------------
!(gateState(G1, true))*.passSignal(2, true)false &&
true*.closeGate(G1).!(gateState(G1, false))*.passSignal(2, true)false
!(gateState(G0, true))*.passSignal(0, true)false &&
true*.closeGate(G0).!(gateState(G0, false))*.passSignal(0, true)false

%-------------------------------------------------------------------
true*.!(shipPresence(Pnone, false)).passSignal(3, true)false
true*.!(shipPresence(Pnone, false)).passSignal(1, true)false
