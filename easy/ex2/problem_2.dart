class Book{
    String _title = "";
    String _author = "";
    int _pages = 0;
    Book(String t, String a, int p){
        _title = t;
        _author = a;
        _pages = p;
    }
    String getInfo(){
        return _title + " by " + _author + ", Pages " + _pages.toString();
    }
}

void main(){
    Book atomicHeart = Book("Atomic Heart", "Harald Horf", 300);
    print(atomicHeart.getInfo());
}