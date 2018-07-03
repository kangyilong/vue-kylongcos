<template>
    <div class="sec">
        <section class="sec2">
            <div class="sec_box sec2_box">
                <div class="sec2_todo">我们能做什么</div>
                <div class="sec2_con">
                    <ul>
                        <li v-for="item of sec2_list">
                            <div class="hide_box">
                                <p><i></i></p>
                                <p class="hide_p2">{{item.hide_p2}}</p>
                                <p class="hide_p3">{{item.hide_p3}}</p>
                            </div>
                            <div class="show_box">
                                <p class="show_p1">
                                    <i class="iconfont" :class="item.icon"></i>
                                </p>
                                <p class="show_p2">{{item.show_p2}}</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
    </div>
</template>

<script>
    export default {
        data(){
            return {
                sec2_list: []
            }
        },
        methods: {
            getData(){
                //axios请求数据
                this.$axios.get('/api/sec2')
                .then((result) => {
                    this.sec2_list = result.data;
                })
                .catch(function(err){
                    throw err;
                })   
            }
        },
        mounted(){
            this.getData();
          },
        activated(){
            sessionStorage.setItem('dex', 1);
        }
    }
</script>

