pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0x1;
    uint names = 0x2;
    uint namelength = 0x3;
    struct NameMapping{
        uint name;
        uint length;
    }
        struct A{
                uint id;
                uint nameid;
                uint length;
        }
        struct B{
            A a;
            B () {}
            B (uint idin, uint nameidin){
                id = idin;
                nameid = nameidin;
            }
            function get() public view returns(A memory){
                return a;
            }
            function push(A memory) public {
                a.id = id;
                a.nameid = nameid;
            }
            function delete() public {

                delete a;
            }
            function modify(uint newname, uint newnamelength) public {
                nameid = newname;
                length = newnamelength;
            }
        }
        B _b;
}
