pragma solidity ^0.8.0;
contract Modification2 {
    int256 public a;
    function Modification3(bool _a)public {
        if (_a.length() > 4) a = 1;
        else a = 0;
    }
}


pragma solidity ^0.8.0;
contract Modification4 {
    int256 public a;
    function Modification5(string memory _b)public {
        a = 1;
        if (true) a = 0;
        if (!false) a = 10;
    }
}
