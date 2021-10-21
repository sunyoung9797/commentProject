package co.yedam.hotel;

public class ReserveInfo {
	public String reserveId; //예약자ID
	public String gender; //성별
	public String roomCd; //예약룸코드
	public String grpCd; //그룹코드
	public String checkIn; //체크인날짜
	public String checkOut; //체크아웃날짜
	public int adults; //숙박할 어른 수
	public int children; //숙박할 어린이 수
	public int adultsBf; //어른 조식 수
	public int childrenBf; //어린이 조식 수
	public int extraBed; //여분 침대 수
	public String adultsBfP; //어른 조식 총 비용
	public String childrenBfP; //어린이 조식 총 비용
	public String extraBedP; //여분 침대 총 비용
	public String roomPrice; //룸비용
	public String tax; //세금
	public String totalPrice; //총 예약 비용
	public String cmt; //요청사항
	public String rsvName; //예약자 이름
	public String engName; //영어 이름
	public String nationality; //국적
	public String phoneNum; //연락처
	public String email; //이메일
	public String cardType; //카트종류
	public String cardNum; //카드번호
	public String expDate; //카드만기일
	public String cardPw; //카드비번
	public String birth; //생년월일
	
	public String getReserveId() {
		return reserveId;
	}
	public void setReserveId(String reserveId) {
		this.reserveId = reserveId;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getRoomCd() {
		return roomCd;
	}
	public void setRoomCd(String roomCd) {
		this.roomCd = roomCd;
	}
	public String getGrpCd() {
		return grpCd;
	}
	public void setGrpCd(String grpCd) {
		this.grpCd = grpCd;
	}
	public String getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	public String getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}
	public int getAdults() {
		return adults;
	}
	public void setAdults(int adults) {
		this.adults = adults;
	}
	public int getChildren() {
		return children;
	}
	public void setChildren(int children) {
		this.children = children;
	}
	public int getAdultsBf() {
		return adultsBf;
	}
	public void setAdultsBf(int adultsBf) {
		this.adultsBf = adultsBf;
	}
	public int getChildrenBf() {
		return childrenBf;
	}
	public void setChildrenBf(int childrenBf) {
		this.childrenBf = childrenBf;
	}
	public int getExtraBed() {
		return extraBed;
	}
	public void setExtraBed(int extraBed) {
		this.extraBed = extraBed;
	}
	public String getAdultsBfP() {
		return adultsBfP;
	}
	public void setAdultsBfP(String adultsBfP) {
		this.adultsBfP = adultsBfP;
	}
	public String getChildrenBfP() {
		return childrenBfP;
	}
	public void setChildrenBfP(String childrenBfP) {
		this.childrenBfP = childrenBfP;
	}
	public String getExtraBedP() {
		return extraBedP;
	}
	public void setExtraBedP(String extraBedP) {
		this.extraBedP = extraBedP;
	}
	public String getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(String roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getTax() {
		return tax;
	}
	public void setTax(String tax) {
		this.tax = tax;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getCmt() {
		return cmt;
	}
	public void setCmt(String cmt) {
		this.cmt = cmt;
	}
	public String getRsvName() {
		return rsvName;
	}
	public void setRsvName(String rsvName) {
		this.rsvName = rsvName;
	}
	public String getEngName() {
		return engName;
	}
	public void setEngName(String engName) {
		this.engName = engName;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	public String getExpDate() {
		return expDate;
	}
	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}
	public String getCardPw() {
		return cardPw;
	}
	public void setCardPw(String cardPw) {
		this.cardPw = cardPw;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	@Override
	public String toString() {
		return "ReserveInfo [reserveId=" + reserveId + ", gender=" + gender + ", roomCd=" + roomCd + ", grpCd=" + grpCd
				+ ", checkIn=" + checkIn + ", checkOut=" + checkOut + ", adults=" + adults + ", children=" + children
				+ ", adultsBf=" + adultsBf + ", childrenBf=" + childrenBf + ", extraBed=" + extraBed + ", adultsBfP="
				+ adultsBfP + ", childrenBfP=" + childrenBfP + ", extraBedP=" + extraBedP + ", roomPrice=" + roomPrice
				+ ", tax=" + tax + ", totalPrice=" + totalPrice + ", cmt=" + cmt + ", rsvName=" + rsvName + ", engName="
				+ engName + ", nationality=" + nationality + ", phoneNum=" + phoneNum + ", email=" + email
				+ ", cardType=" + cardType + ", cardNum=" + cardNum + ", expDate=" + expDate + ", cardPw=" + cardPw
				+ ", birth=" + birth + "]";
	}
	
}
