pragma solidity ^0.8.0;
contract AssignmentModulation_V10 {
    uint public w;
    uint[] public x;
    uint[] public y;
     function AssignmentModulation_V10(uint _w, uint[] memory _x, uint[] memory _y) public {
        w = _w;
 x = _x;
        y = _y;
        x.push(4);
    }
    function getValueFromAssignmentModulation_V9(uint _x) public returns(uint){
        return x[x.push(4)] + _x * y[x.push(_x) - 1];
    }

    function getAndStorePairs() public returns(uint){
        return x[x.push(4)] + 4 * x[x.push(4)];
    }
}

pragma solidity ^0.8.0;
contract AssignmentModulation_V11 {
    uint public w;
    uint[] public x;
    uint public y;
     constructor (uint _x, uint _y) public {
        x = new uint[](2);
        x[0] = _x;
        x[1] = _y;
    }

    function getAndStorePairs() public returns(uint){
        if (x[1] == 2)
            return 3 * x[x.push(0)];
        else return 2+4;
    }
}

pragma solidity ^0.8.0;
contract AssignmentModulation_V12 {
    uint[] public x;
    uint[] public y;
    uint[] public f;
    mapping(uint => uint) public x_to_y;

     constructor (uint[] memory _x, uint[] memory _y) public {
        x = _
