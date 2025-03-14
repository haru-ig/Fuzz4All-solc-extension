pragma solidity ^0.8.0;
contract SemanticsEquivalence13 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    function modifiesFirst() public {
        data.x1++;
        data.x1++;
    }
    function modifiesSecond() public {
        data = data;
        data.x2 = 12 * 3;
    }
    function modifies() public {
        modifiesFirst();
        modifiesSecond();
    }
}
contract SemanticsEquivalence14 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    function zeroes() public {
        data.x1 += data.x2;
        data.x2 = 12 * 3;
        data.x1 = data.x3;
        data.x1 = data.x2;
    }
    function receivesEth() public payable {
        data.x1++;
        data.x1++;
        data.x1++;
        data.x1++;
        data.x1++;
        data.x1++;
        data.x1++;
        data.x1++;
        data.x1++;
        data.x1++;
    }
}
contract SemanticsEquivalence15 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    function passesArgs() public {
        data.x1++;
        data.x1++;
        data.x1++;
        data.x1 = uint(msg.data.length);
    }
    function takesArgs() public {
        data.x1++;
        data.x1++;
        data.x1++;
        data.x1 += uint(msg.value);\
        data.x2 = uint(msg.value);
    }
    function returnsValue() public view returns (uint) {
        return uint(data.x1) + uint(data.x2);
    }
}
contract SemanticsEquivalence16 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    mapping(bool
