pragma solidity ^0.8.0;
contract M1{
    uint16 private z;
    constructor(){
        constructorcall();
    }
    function constructorcall(){
        z = 1234;
    }
}

pragma solidity ^0.8.0;
contract G{

}

pragma solidity ^0.8.0;
contract M{
    uint16 private x;
    constructor(G obj){

        (bool success, ) = obj.func();
        assert(success);

        uint16 y;
        (success, ) = obj.func();
        assert(y == 1234);
        assert(!success);
    }
    function func(uint16 id) public view returns (bool success){

        success = true;
    }
}

pragma solidity ^0.8.0;
contract T{
    uint16 private y;
    uint16 public x;
    uint16 public w;
    uint16 public z;
    constructor(M1 test){   }
    function test(uint16 id) public view returns (bool){

        if(test.y!= y){
            return true;
        }
        assert(y == x);

        if(y < m3(y, x)){
            assert(y == z);
        }

        else{
            assert(y == w);
        }
        return false;
    }
    function m3(uint16 id, uint16 data) public pure returns (uint16 w){
        return 10 * (id + data);
    }
}
