class JobItemList {
  
  final List<JobItem> jobItem;

  JobItemList({this.jobItem});

  factory JobItemList.fromJson(List<dynamic> parsedJson)
  {
    List<JobItem> jobItem = new List<JobItem>();
    jobItem = parsedJson.map((i)=>JobItem.fromJson(i)).toList();

    return new JobItemList(
      jobItem: jobItem
    );
  }
}

class JobItem{
    final int id;
    final String jobId;
    final String jobType;
    final String title;
    final String description;
    final String customer;
    final String startDate;
    final String completeDate;
    final String technicianNote;
    final int complete;
    final int technicianId;

    //final List<Inventory> inventory = new ArrayList<>();
    //final List<ExpenseAmount> expense = new ArrayList<>();
    //final List<RodReading> rod_reading = new ArrayList<>();

    JobItem({this.id, this.jobId, this.jobType, this.title, this.description, this.customer, this.startDate, this.completeDate, this.technicianNote, this.complete, this.technicianId});

    factory JobItem.fromJson(Map<String, dynamic> json) {
      return JobItem(
        id:             int.parse(json['id']),
        jobId:          json['job_id'],
        jobType:        json['job_type'],
        title:          json['title'],
        description:    json['description'],
        customer:       json['customer'],
        startDate:      json['start_date'],
        completeDate:   json['complete_date'],
        technicianNote: json['technician_note'],
        complete:       int.parse(json['complete']),
        technicianId:   int.parse(json['technician_id'])
      );
    }
    /*public void setCompleteDate() {
        this.complete_date = new SimpleDateFormat("yyyy-MM-dd HHmmss", Locale.US).format(new Date());
    }*/
}