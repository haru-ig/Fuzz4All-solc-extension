pragma solidity ^0.8.0;
contract fallbacksemantic_mut
{
    fallbacksemantic_mut2 public fallbacksemantic_mut2Storage;
    fallbacksemantic_mut3 public fallbacksemantic_mut3Storage;
    function f(bytes memory a) public pure {
        if (a.length!= 0) {
            fallbacksemantic_mut2Storage.f(a);
        }
        fallbacksemantic_mut3Storage.g(fallbacksemantic_mut2Storage.f(a));
    }
}
