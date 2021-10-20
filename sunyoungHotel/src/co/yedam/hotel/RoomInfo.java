package co.yedam.hotel;

public class RoomInfo {
	public String grpCd;
	public String grpNm;
	public String grpFloor;
	public String beds;
	public String roomSize;
	public String features;
	public String views;
	public String price;
	public int adults;
	public int children;
	public int cntRoom;
	
	public String getGrpCd() {
		return grpCd;
	}
	public void setGrpCd(String grpCd) {
		this.grpCd = grpCd;
	}
	public String getGrpNm() {
		return grpNm;
	}
	public void setGrpNm(String grpNm) {
		this.grpNm = grpNm;
	}
	public String getGrpFloor() {
		return grpFloor;
	}
	public void setGrpFloor(String grpFloor) {
		this.grpFloor = grpFloor;
	}
	public String getBeds() {
		return beds;
	}
	public void setBeds(String beds) {
		this.beds = beds;
	}
	public String getRoomSize() {
		return roomSize;
	}
	public void setRoomSize(String roomSize) {
		this.roomSize = roomSize;
	}
	public String getFeatures() {
		return features;
	}
	public void setFeatures(String features) {
		this.features = features;
	}
	public String getViews() {
		return views;
	}
	public void setViews(String views) {
		this.views = views;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
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
	public int getCntRoom() {
		return cntRoom;
	}
	public void setCntRoom(int cntRoom) {
		this.cntRoom = cntRoom;
	}
	
	@Override
	public String toString() {
		return "RoomInfo [grpCd=" + grpCd + ", grpNm=" + grpNm + ", grpFloor=" + grpFloor + ", beds=" + beds
				+ ", roomSize=" + roomSize + ", features=" + features + ", views=" + views + ", price=" + price
				+ ", adults=" + adults + ", children=" + children + ", cntRoom=" + cntRoom + "]";
	}
	
}
