pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity62_dynamic_184 {
    SemanticallyEquivalentSolidity62_dynamic_183[] public n;
}
pragma solidity ^0.8.0;

contract SemanticallyEquivalentSolidity62_dynamic_184 {
    constructor() {
        uint temp = 0;
        n.push(temp);
        n[0].m = temp + 1;
    }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity62_dynamic_185 {
    constructor() {
        uint[] memory temp = new uint[](1);
        n = new SemanticallyEquivalentSolidity62_dynamic_183[](1);
        n[0] = temp[0];
        n[0].m = temp[0] + 1;
    }
    SemanticallyEquivalentSolidity62_dynamic_183[] public n;
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity62_dynamic_186 {
    constructor() {
        uint[] memory temp = new uint[](1);
        n = new SemanticallyEquivalentSolidity62_dynamic_183[](1);
        for (uint j = 0; j < 1; j++) {
            n[0] = temp[0];
            n[0].m = temp[0] + 1;
        }
    }
    SemanticallyEquivalentSolidity62_dynamic_183[] public n;
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity62_dynamic_187 {
    constructor() {
        uint[] memory temp = new uint[](1);
        n = new SemanticallyEquivalentSolidity62_dynamic_183[](1);
        for (uint j = 0; j < 1; j++) {
            n.push(temp[0]);
            n[j].m = temp[0] + 1;
        }
    }
    SemanticallyEquivalentSolidity62_dynamic_183[] public n;
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity62_dynamic_188 {
    uint[] memory temp = new uint[](1);
    constructor() {
        n = new SemanticallyEquivalentSolidity62_dynamic_183[](1);
        for (uint j = 0; j < 1; j++) {
            n.push(temp[0]);
            n[j].m = temp[0] + 1;
        }
    }
    SemanticallyEquivalentSolidity62_dynamic_183[] public n;
}
