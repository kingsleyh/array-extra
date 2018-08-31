function concat(a, b) {
    return a.reduceRight(function (coll, item) {
        coll.unshift(item);
        return coll;
    }, b);
}