// PojoUrun sınıfı, ürün bilgilerini tutmak için kullanılır.  
class PojoUrun {  
    private int id; // Ürün ID'si  
    private String urunIsmi; // Ürün ismi  
    private String uretici; // Üretici ismi  
    private int miktar; // Ürün miktarı  
    private String birim; // Ürün birimi  
    private String raf; // Ürün raf numarası  

    // Constructor  
    public PojoUrun(int id, String urunIsmi, String uretici, String birim) {  
        this.id = id;  
        this.urunIsmi = urunIsmi;  
        this.ureticisi = uretici;  
        this.birim = birim;  
        this.miktar = 0; // Başlangıçta miktar sıfır  
        this.raf = null; // Başlangıçta raf boş  
    }  

    // Getter ve Setter metodları  
    public int getId() { return id; }  
    public String getUrunIsmi() { return urunIsmi; }  
    public String getUretici() { return uretici; }  
    public int getMiktar() { return miktar; }  
    public String getBirim() { return birim; }  
    public String getRaf() { return raf; }  

    // Miktarı güncelleme metodu  
    public void setMiktar(int miktar) {  
        if (miktar < 0) { // Miktar negatif olamaz  
            throw new IllegalArgumentException("Miktar 0'dan az olamaz.");  
        }  
        this.miktar = miktar;  
    }  

    // Raf güncelleme metodu  
    public void setRaf(String raf) { this.raf = raf; }  
}  

// DepoUygulamasi sınıfı, depo işlemlerini yönetir.  
public class DepoUygulamasi {  
    private Map<Integer, PojoUrun> urunler = new HashMap<>(); // Ürünleri tutan harita  
    private int urunIdCounter = 1000; // Ürün ID'si için başlangıç değeri  

    // Yeni ürün tanımlama metodu  
    public void urunTanimlama(String urunIsmi, String uretici, String birim) {  
        PojoUrun urun = new PojoUrun(urunIdCounter, urunIsmi, uretici, birim);  
        urunler.put(urunIdCounter, urun); // Ürünü haritaya ekle  
        urunIdCounter++; // ID sayacını artır  
    }  

    // Ürün listesini gösterme metodu  
    public void urunListele() {  
        // Başlıkları yazdır  
        System.out.printf("%-10s %-10s %-15s %-10s %-10s %-10s%n", "id", "ismi", "ureticisi", "miktari", "birimi", "raf");  
        System.out.println("-------------------------------------------------------------------");  
        // Her ürünü listeleme  
        for (PojoUrun urun : urunler.values()) {  
            System.out.printf("%-10d %-10s %-15s %-10d %-10s %-10s%n",  
                    urun.getId(), urun.getUrunIsmi(), urun.getUretici(),  
                    urun.getMiktar(), urun.getBirim(), urun.getRaf() != null ? urun.getRaf() : "null");  
        }  
    }  

    // Ürün girişi yapma metodu  
    public void urunGirisi(int id, int eklenenMiktar) {  
        PojoUrun urun = urunler.get(id); // Ürünü ID'sine göre bul  
        if (urun != null) {  
            urun.setMiktar(urun.getMiktar() + eklenenMiktar); // Miktarı güncelle  
        }  
    }  

    // Ürünü rafa koyma metodu  
    public void urunuRafaKoy(int id, String raf) {  
        PojoUrun urun = urunler.get(id); // Ürünü ID'sine göre bul  
        if (urun != null) {  
            urun.setRaf(raf); // Raf numarasını güncelle  
        }  
    }  

    // Ürün çıkışı yapma metodu  
    public void urunCikisi(int id, int cikisMiktari) {  
        PojoUrun urun = urunler.get(id); // Ürünü ID'sine göre bul  
        if (urun != null) {  
            int kalanMiktar = urun.getMiktar() - cikisMiktari; // Çıkış sonrası miktarı hesapla  
            if (kalanMiktar < 0) {  
                throw new IllegalArgumentException("Çıkış yapılacak miktar mevcut miktardan fazla olamaz.");  
            }  
            urun.setMiktar(kalanMiktar); // Yeni miktarı güncelle  
        }  
    }  

    // Ana metot  
    public static void main(String[] args) {  
        DepoUygulamasi depo = new DepoUygulamasi(); // Depo uygulaması nesnesi oluştur  
        Scanner scanner = new Scanner(System.in); // Kullanıcı girişi için Scanner  

        // Kullanıcıdan ürün tanımlama al  
        depo.urunTanimlama("un", "hekimoglu", "cuval"); // Yeni bir ürün tanımla  
        depo.urunListele(); // Ürünleri listele  

        // Ürün girişi  
        System.out.println("Urun girişi yapınız (id: 1000, miktar: 5):");  
        depo.urunGirisi(1000, 5); // Ürün girişini yap  
        depo.urunListele(); // Güncel ürün listesi  

        // Ürünü rafa koyma  
        System.out.println("Urunu raf1'e koyunuz (id: 1000, raf: raf1):");  
        depo.urunuRafaKoy(1000, "raf1"); // Ürünü belirli bir rafa koy  
        depo.urunListele(); // Güncel ürün listesi  

        // Ürün çıkışı  
        System.out.println("Urun cikisi yapınız (id: 1000, miktar: 3):");  
        depo.urunCikisi(1000, 3); // Ürün çıkışını yap  
        depo.urunListele(); // Güncel ürün listesi  
    }  
}  