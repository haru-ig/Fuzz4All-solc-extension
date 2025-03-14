pragma solidity ^0.8.0;
struct Immutable {
    function newFunc() view public pure returns (uint256);
}
contract MutatedSemanticallyEquivalentAssemblyExample12 {
    struct Mutated {
        function newFunc() pure view public returns (uint256);
    }
    Immutable memory x;
    Mutated memory y;
    constructor() public {
      y.x = x.newFunc();
    }
    function main() public pure {
        x.newFunc()++;
        x.newFunc()++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample13 {
    struct Mutated {
        function zeroValue() pure view returns (uint256);
    }
    Mutated memory y;
    Immutable memory x;
    constructor() public {
        y.x = x.newFunc();
    }
    function main() public pure {
        x.newFunc()++;
        y.x = x.zeroValue();
    }
}

pragma solidity ^0.8.0;
struct Immutable {
    function newFunc() view public pure returns (uint256);
}
contract MutatedSemanticallyEquivalentAssemblyExample18 {
    struct Mutated {
        function newFunc() pure view public returns (uint256);
    }
    Mutated memory y;
    Mutated memory x;
    constructor() public {
        y.newFunc();
        x.newFunc();
    }
    function main() public pure {
        x.newFunc()++;
        y.x = x.newFunc();
        y.x = x.newFunc();
        x.newFunc()++;
    }
}
