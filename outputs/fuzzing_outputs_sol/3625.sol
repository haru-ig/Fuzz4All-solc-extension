pragma solidity ^0.8.0;
contract MutateSemantic5Caller4 is MutateSemantic5Caller3 {
    function modifyC(uint256 x, uint y) public pure { x += y / 3; }
}


pragma solidity ^0.8.0;
contract MutateSemantic5Caller5 {
    event Evt(uint a);
    function modifyA(uint x, uint y) public returns (uint) {_modifyA(x, y); }
    function modifyC(uint256 x, uint y) public returns (uint256) {
        _modifyC(x, y + 3);
    }
}



pragma solidity ^0.8.0;
contract MutateSemantic5Caller6 is MutateSemantic5Caller5 {
    function modifyA(uint x, uint y) internal returns (uint) { return x + y / 2; }
    function modifyC(uint256 x, uint y) internal pure { x += y / 3; }
}

pragma solidity ^0.8.0;
interface MutateSemantic6Interface {
    event Evt(uint a);
    function modifyA(uint x, uint y) public returns (uint);
}
contract MutateSemantic5Caller7 is MutateSemantic5Caller6, MutateSemantic6Interface {
    function modifyC(uint256 x, uint y) public pure override { x += y / 3; }
}
contract MutateSemantic5Caller7A is MutateSemantic5Caller6, MutateSemantic6Interface {
    function modifyC(uint256 x, uint y) public pure virtual { x += y / 3; }
}
contract MutateSemantic5Caller7B is MutateSemantic5Caller6, MutateSemantic6Interface {
    function modifyC(uint256 x, uint y) public view virtual virtual { x += y / 3; }
}
contract MutateSemantic5Caller7C is MutateSemantic5Caller6 {
    function modifyA(uint x, uint y) public override virtual { return x + y / 2; }
    function modifyC(uint256 x, uint y) public pure virtual override { x += y / 3; }
}
contract MutateSemantic5Caller7D is MutateSemantic5Caller6 {
    function modifyA(uint x, uint y) public view override virtual { return x + y /
