import Std.Diagnostics.DumpMachine;

operation Main(): Result[] {
    use qs = Qubit[5];

    ApplyToEach(H, qs);

    DumpMachine();

    let results = [M(qs[0]), M(qs[1]), M(qs[2]), M(qs[3]), M(qs[4])];

    ResetAll(qs);
    return results;
}