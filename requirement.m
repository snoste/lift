[(!gateState1(false))*.openGate(G0)]false &&
[true*.openGate(G1).(!gateState1(false))*.openGate(G0)]false && 
[!(gateState0(false))*.openGate(G1)]false &&
[true*.openGate(G0).!gateState0(false))*.openGate(G1)]false &&

%-------------------------------------------------------------------
[!(valveState1(false))*.openValve(V0)false] &&
[true*.openValve(V1).!(valveState1(false))*.openValve(V0)]false &&
[!(valveState1(false))*.openValve(V0)]false &&
[true*.openValve(V1).!(valveState1(false))*.openValve(V0)]false &&

%-------------------------------------------------------------------
[!(valveState1(false))*.openGate(G0)false] &&
[true*.openValve(V1).!(valveState1(false))*.openGate(G0)]false &&
[!(valveState0(false))*.openGate(G1)false] &&
[true*.openValve(V0).!(valveState0(false))*.openGate(G1)]false &&

%-------------------------------------------------------------------
[!(gateState1(false))*.openValve(V0)]false &&
[true*.openGate(G1).!(gateState1(false))*.openValve(V0)]false &&
[!(gateState0(false))*.openValve(V1)]false &&
[true*.openGate(G0).!(gateState0(false))*.openValve(V1)]false

%-------------------------------------------------------------------
[true*.!(gateSensor0(false)).closeGate(G0)]false
[true*.!(gateSensor1(false)).closeGate(G1)]false

%-------------------------------------------------------------------
[true*.!(compareWaterlevel0).openGate(G0)]false
[true*.!(compareWaterlevel1).openGate(G1)]false

%-------------------------------------------------------------------
%true*.passSignal(0, true).!(haltSignal(0, false))false
%true*.passSignal(1, true).!(haltSignal(1, false))false
%true*.passSignal(2, true).!(haltSignal(2, false))false
%true*.passSignal(3, true).!(haltSignal(3, false))false

%-------------------------------------------------------------------
%true*.haltSignal(0, true).!(passSignal(0, false))false
%true*.haltSignal(1, true).!(passSignal(1, false))false
%true*.haltSignal(2, true).!(passSignal(2, false))false
%true*.haltSignal(3, true).!(passSignal(3, false))false

%-------------------------------------------------------------------
%true*.!(haltSignal(0, true)).passSignal(0, false)false
%true*.!(haltSignal(1, true)).passSignal(1, false)false
%true*.!(haltSignal(2, true)).passSignal(2, false)false
%true*.!(haltSignal(3, true)).passSignal(3, false)false

%-------------------------------------------------------------------
%true*.!(passSignal(0, true)).haltSignal(0, false)false
%true*.!(passSignal(1, true)).haltSignal(1, false)false
%true*.!(passSignal(2, true)).haltSignal(2, false)false
%true*.!(passSignal(3, true)).haltSignal(3, false)false

%-------------------------------------------------------------------
%!(gateState1(true))*.passSignal(2, true)false &&
%true*.closeGate(G1).!(gateState1(false))*.passSignal(2, true)false
%!(gateState0(true))*.passSignal(0, true)false &&
%true*.closeGate(G0).!(gateState0(false))*.passSignal(0, true)false

%-------------------------------------------------------------------
%true*.!(shipPresence(Pnone, false)).passSignal(3, true)false
%true*.!(shipPresence(Pnone, false)).passSignal(1, true)false
