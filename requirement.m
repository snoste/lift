[(!gateState1(false))*.openGate(G0)]false &&
[true*.openGate(G1).(!gateState1(false))*.openGate(G0)]false && 
[!(gateState0(false))*.openGate(G1)]false &&
[true*.openGate(G0).!gateState0(false))*.openGate(G1)]false &&

%-------------------------------------------------------------------
[!(valveState1(false))*.openValve(V0)]false &&
[true*.openValve(V1).!(valveState1(false))*.openValve(V0)]false &&
[!(valveState1(false))*.openValve(V0)]false &&
[true*.openValve(V1).!(valveState1(false))*.openValve(V0)]false &&

%-------------------------------------------------------------------
[!(valveState1(false))*.openGate(G0)]false &&
[true*.openValve(V1).!(valveState1(false))*.openGate(G0)]false &&
[!(valveState0(false))*.openGate(G1)]false &&
[true*.openValve(V0).!(valveState0(false))*.openGate(G1)]false &&

%-------------------------------------------------------------------
[!(gateState1(false))*.openValve(V0)]false &&
[true*.openGate(G1).!(gateState1(false))*.openValve(V0)]false &&
[!(gateState0(false))*.openValve(V1)]false &&
[true*.openGate(G0).!(gateState0(false))*.openValve(V1)]false &&

%-------------------------------------------------------------------
[true*.!(gateSensor0(false)).closeGate(G0)]false &&
[true*.!(gateSensor1(false)).closeGate(G1)]false &&

%-------------------------------------------------------------------
[true*.!(compareWaterLevel0(true)).openGate(G0)]false &&
[true*.!(compareWaterLevel1(true)).openGate(G1)]false && 

%-------------------------------------------------------------------
[true*.passSignalOn(S00).!(haltSignalOff(S00))]false &&
[true*.passSignalOn(S01).!(haltSignalOff(S01))]false &&
[true*.passSignalOn(S10).!(haltSignalOff(S10))]false &&
[true*.passSignalOn(S11).!(haltSignalOff(S11))]false &&

%-------------------------------------------------------------------
[true*.haltSignalOn(S00).!(passSignalOff(S00))]false &&
[true*.haltSignalOn(S01).!(passSignalOff(S01))]false &&
[true*.haltSignalOn(S10).!(passSignalOff(S10))]false &&
[true*.haltSignalOn(S11).!(passSignalOff(S11))]false &&

%-------------------------------------------------------------------
[true*.!(haltSignalOn(S00)).passSignalOff(S00)]false &&
[true*.!(haltSignalOn(S01)).passSignalOff(S01)]false &&
[true*.!(haltSignalOn(S10)).passSignalOff(S10)]false &&
[true*.!(haltSignalOn(S11)).passSignalOff(S11)]false &&

%-------------------------------------------------------------------
[true*.!(passSignalOn(S00)).haltSignalOff(S00)]false &&
[true*.!(passSignalOn(S01)).haltSignalOff(S01)]false &&
[true*.!(passSignalOn(S10)).haltSignalOff(S10)]false &&
[true*.!(passSignalOn(S11)).haltSignalOff(S11)]false &&

%-------------------------------------------------------------------
%!(gateState1(true))*.passSignalOn(2)]false &&
%[true*.closeGate(G1).!(gateState1(false))*.passSignalOn(2)]false
%!(gateState0(true))*.passSignalOn(0)]false &&
%[true*.closeGate(G0).!(gateState0(false))*.passSignalOn(0)]false

%-------------------------------------------------------------------
%[true*.!(shipPresence(Pnone, false)).passSignalOn(3)]false
%[true*.!(shipPresence(Pnone, false)).passSignalOn(1)]false
