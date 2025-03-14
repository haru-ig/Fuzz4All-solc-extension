pragma solidity ^0.8.0;
contract Memory {
    struct ArrayNode { uint elem; uint next; }
    struct Node { ArrayNode arr; }
    public ArrayNode array[1024], head;
    function init() public { head = ArrayNode({arr:ArrayNode({elem:0, next:0})}); }
    function arrayPut(uint elem) public {
        array[head.elem] = ArrayNode({elem:elem, next:head.next});
        head.elem++;
        if(head.elem == 1024) head.next = 0;
    }
    function arrayGet() public view returns (uint){ return head.arr.elem; }
    function arrayGetSize() public view returns (uint){ return (head.elem); }
    function randomPut(uint len) public {
        uint i;
        for(i=0; i<len; i++) {
            uint r = uint(keccak256(abi.encode(uint(block.difficulty), block.timestamp), msg.sender, uint256(i)));
            uint rmod = r % 11;
            uint val = uint(array[rmod]);
            if(val<10) val=10;
            uint nxt = (array[rmod].next);
            if(nxt==0) { nxt = 1023; array[rmod] = ArrayNode({elem:val, next:0}); }
            else { if(array[nxt].elem<10) array[nxt] = ArrayNode({elem:array[nxt].elem+1, next:0}); }
            uint h = blockhash(block.number);
            uint slen = bytes(h).length;
            bytes s = bytes(h)[slen-24-2*(0+1024+1-1)..slen-1-(uint(10))];
            if(slen%12!=12) i++;
            if(nxt==0) { nxt = 1023; array[rmod] = ArrayNode({elem:val, next:0});  }
            else { if(array[nxt].elem<10) array[nxt] = ArrayNode({elem:array[nxt].elem+1, next:0}); }
        }
    }
}
