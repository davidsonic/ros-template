#include<ros/ros.h>
#include <std_msgs/Int64.h>
#include <std_srvs/SetBool.h>

class NumberCounter {
    private:
    int counter;
    ros::Publisher pub;
    ros::Subscriber sub;
    ros::ServiceServer reset_service;

    public:
    NumberCounter(ros::NodeHandle *nh){
        counter =0;
        pub = nh->advertise<std_msgs::Int64>("/number_count", 10);
        sub = nh->subscribe("/number", 1000, &NumberCounter::callback_number, this);
        reset_service = nh->advertiseService("/reset_counter", &NumberCounter::callback_reset_service, this);

    }

    void callback_number(const std_msgs::Int64&msg){
        counter += msg.data;
        std_msgs::Int64 new_msg;
        new_msg.data = counter;
        pub.publish(new_msg);
    }


    bool callback_reset_service(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response & res){
        if(req.data){
            counter =0;
            res.success = true;
            res.message="counter has been reset";
        }else{
            res.success = false;
            res.message = "counter has not been reset";
        }
        return true;
    }

};


int main(int argc, char**argv){

    ros::init(argc, argv, "number_counter");
    ros::NodeHandle nh;
    NumberCounter nc = NumberCounter(&nh);
    ros::spin();
}