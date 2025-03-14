pragma solidity ^0.8.0;



contract Memory1{
    uint private p0;
    uint[] public p1;
    function getArrayAddress(uint i) public pure returns (uint){

        return p0;
    }
}

pragma solidity ^0.8.0;
contract Memory2 {
    address[] public p0;
    constructor () {
        p0.push(address(p1));
        p0.push(address(p2));
        p0.push(address(p3));
        p0.push(address(p4));
        p0.push(address(p5));
        p0.push(address(c0));
        p0.push(address(c1));
        p0.push(address(c2));
        p0.push(address(c3));
        p0.push(address(c4));
        p0.push(address(c5));
    }
    address public p3;
    void setP3(address _a) public {
        p3 = _a;
    }
    void setP1(uint _i, address _a) public {
        p1[_i] = _a;
    }
    address memoryArrayGetAddress(uint _id, uint _index) public view returns (address) {
        return this.p0[_id + (_index * 6)];
    }


    void arrayGetElements(uint [] memory _a) public view{





        for (uint i = 0; i<_a.length; i++){


            address addr;
            uint size;
            if (!this.memoryArrayGetAddress(_id, i)!= address(0)){
                addr = this.memoryArrayGetAddress(_id, i);
                size = 1;
            }else{
                addr = this.memoryArrayGetAddress(_id, (i + 1) % 5);
                size = 2;
            }
            _a[i] = uint(uint
